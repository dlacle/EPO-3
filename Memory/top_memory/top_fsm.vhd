library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity top_fsm is 
port (
    clk          : in std_logic;
    reset        : in std_logic;
    m_write      : out std_logic;
    m_erase      : out std_logic;
    m_read       : out std_logic
);
 end entity top_fsm;

 architecture behavioural of top_fsm is
    type state_type is (idle_state,m_read,m_write,m_erase);
    
    signal state,new_state:state_type;
    signal 

begin 
    
reg: process(clk)
    begin
        if rising_edge(clk25) then
            if reset = '1' then
                state    <= idle_state;
                clkcount <= 0;
            else
                state    <= new_state;
                clkcount <= new_clkcount;
                bitcount <= new_bitcount;
                inbuf      <= new_inbuf;
                address  <= new_address;
            end if;
        end if;
    end process;

comb: process(state)
    begin
        case state is 
        when idle_state =>
            m_write <='0';
            m_erase <='0';
            m_read <='0';

        if page_full = '1' and frame_done = '1'then
            new_state <= erase_state;

        elsif start_read = '1' and page_full = '0' then
            new_state <= read_state;
           
        elsif start_write = '1' and page_full = '0' then
            new_state <= write_state;
         
        end if;

        when erase_state =>
        m_write <='0';
        m_erase <='1';c
        m_read <='0';
        new_state <= idle_state;

        when write_state =>
        m_write <='1';
        m_erase <='0';
        m_read <='0';
        new_state <= idle_state;

        when read_state =>
        m_write <='0';
        m_erase <='0';
        m_read <='1';
        new_state <= idle_state;